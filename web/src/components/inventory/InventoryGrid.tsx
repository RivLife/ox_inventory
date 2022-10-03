import React from 'react';
import { Inventory } from '../../typings';
import WeightBar from '../utils/WeightBar';
import InventorySlot from './InventorySlot';
import InventoryContext from './InventoryContext';
import { getTotalWeight } from '../../helpers';
import { createPortal } from 'react-dom';
import { Typography } from '@mui/material';
import { imagepath } from '../../store/imagepath';
import CraftingSlot from '../crafting/CraftingSlot';

const InventoryGrid: React.FC<{ inventory: Inventory }> = ({ inventory }) => {
  const weight = React.useMemo(
    () => (inventory.maxWeight !== undefined ? getTotalWeight(inventory.items) : 0),
    [inventory.maxWeight, inventory.items]
  );

  return (
    <>
      <div className="inventory-grid-wrapper">
        <div>
          <div className="inventory-grid-header-wrapper">
            <Typography style={{ fontSize: 16 }}>{inventory.label}</Typography>
            {inventory.maxWeight && (
              <Typography style={{ fontSize: 16 }}>
                {weight / 1000}/{inventory.maxWeight / 1000}kg
              </Typography>
            )}
          </div>
          <WeightBar percent={inventory.maxWeight ? (weight / inventory.maxWeight) * 100 : 0} />
        </div>
        <div className={inventory.type === 'crafting' ? 'crafting-grid' : 'inventory-grid-container'}>
          <>
            {inventory.type !== 'crafting' ? (
              <>
                {inventory.items.map((item) => (
                  <InventorySlot
                    key={`${inventory.type}-${inventory.id}-${item.slot}`}
                    item={item}
                    inventory={inventory}
                  />
                ))}
                {inventory.type === 'player' && createPortal(<InventoryContext />, document.body)}
              </>
            ) : (
              <>
                {inventory.items.map((item) => (
                  <CraftingSlot key={`${item.slot}`} item={item} />
                ))}
              </>
            )}
          </>
        </div>
      </div>
    </>
  );
};

export default InventoryGrid;
